provider "aws" {
    region = "us-east-1"
    #AWS_ACCESS_KEY_ID     : inherently defined via PowerShell Environment variable.
    #AWS_SECRET_ACCESS_KEY : inherently defined via PowerShell environment varaible.
    default_tags {
        tags = {
            environment         = "production"
            cost_center         = 10000
            owner_tech_team     = 10001
            owner_business_team = 10001
            platform            = "cloud-governance"
        }
    }
}