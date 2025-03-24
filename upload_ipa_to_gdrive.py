import os
from googleapiclient.discovery import build
from googleapiclient.http import MediaFileUpload
from google.oauth2 import service_account

# Load Google Drive API credentials
SCOPES = ["https://www.googleapis.com/auth/drive.file"]
SERVICE_ACCOUNT_FILE = "creds.json"



credentials = service_account.Credentials.from_service_account_file(
    SERVICE_ACCOUNT_FILE, scopes=SCOPES
)
print(f"++>>>>creds.json: {credentials} ++>>>")
drive_service = build("drive", "v3", credentials=credentials)

# Get the IPA file path from environment variables
ipa_path = os.getenv("IPA_PATH")

if ipa_path and os.path.exists(ipa_path):
    print(f"Uploading: {ipa_path} to Google Drive...")

    # Metadata for Google Drive
    file_metadata = {
        "name": os.path.basename(ipa_path),
        "parents": ["1yBqKi4GlzgIH6xjMUvUD5eXzZep0gekY"]  # Replace with your Google Drive folder ID
    }

    # Upload file
    media = MediaFileUpload(ipa_path, mimetype="application/octet-stream", resumable=True)
    file = drive_service.files().create(body=file_metadata, media_body=media, fields="id").execute()

    print(f"✅ IPA uploaded successfully! File ID: {file.get('id')}")
else:
    print("❌ IPA file not found!")
