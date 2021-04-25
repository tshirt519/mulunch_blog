Aws.config.update({
  region: 'ap-northeast-1',
  credentials: Aws::Credentials.new('AKIATPYYG5GPGSDH42XC', '/1mR9fK0x5P4J57VMpcATBu8HqdrKbT/umWzZTey'),
})

S3_BUCKET = Aws::S3::Resource.new.bucket('mulunch-images')
