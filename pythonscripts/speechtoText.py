from rev_ai import apiclient
import time
from apihelper import *
# create your client
client = apiclient.RevAiAPIClient(key)
job = client.submit_job_local_file("./recording.m4a")
jobs = client.get_list_of_jobs()
time.sleep(35)
transcript_text = client.get_transcript_text(job.id)
print(transcript_text)