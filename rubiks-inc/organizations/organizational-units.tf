# Tier 1 Organizational Units

resource "aws_organizations_organizational_unit" "ou-security" {
    name      = "org-security"
    parent_id = var.root_id
}

resource "aws_organizations_organizational_unit" "ou-infrastructure" {
    name      = "org-infrastructure"
    parent_id = var.root_id
}

resource "aws_organizations_organizational_unit" "ou-sandbox" {
    name      = "org-sandbox"
    parent_id = var.root_id
}

resource "aws_organizations_organizational_unit" "ou-workloads" {
    name      = "org-workloads"
    parent_id = var.root_id
}

resource "aws_organizations_organizational_unit" "ou-policy-staging" {
    name      = "org-policy-staging"
    parent_id = var.root_id
}

resource "aws_organizations_organizational_unit" "ou-suspended" {
    name      = "org-suspended"
    parent_id = var.root_id
}

resource "aws_organizations_organizational_unit" "ou-individual-business-users" {
    name      = "org-individual-business-users"
    parent_id = var.root_id
}

resource "aws_organizations_organizational_unit" "ou-exceptions" {
    name      = "org-exceptions"
    parent_id = var.root_id
}

resource "aws_organizations_organizational_unit" "ou-depoloyments" {
    name      = "org-deployments"
    parent_id = var.root_id
}

resource "aws_organizations_organizational_unit" "ou-transitional" {
    name      = "org-transitional"
    parent_id = var.root_id
}

resource "aws_organizations_organizational_unit" "ou-business-continuity" {
    name      = "org-business-continuity"
    parent_id = var.root_id
}

# Tier 2 Organizational Units

# Security
resource "aws_organizations_organizational_unit" "ou-security-production" {
    name      = "org-security-production"
    parent_id = aws_organizations_organizational_unit.ou-security.id
}

resource "aws_organizations_organizational_unit" "ou-security-development" {
    name      = "org-security-development"
    parent_id = aws_organizations_organizational_unit.ou-security.id
}

#Infrastructure
resource "aws_organizations_organizational_unit" "ou-infrastructure-production" {
    name      = "org-infrastructure-production"
    parent_id = aws_organizations_organizational_unit.ou-infrastructure.id
}

resource "aws_organizations_organizational_unit" "ou-infrastructure-development" {
    name      = "org-infrastructure-development"
    parent_id = aws_organizations_organizational_unit.ou-infrastructure.id
}

# Workloads
resource "aws_organizations_organizational_unit" "ou-workloads-production" {
    name      = "org-workloads-prod"
    parent_id = aws_organizations_organizational_unit.ou-workloads.id
}

resource "aws_organizations_organizational_unit" "ou-workloads-staging" {
    name      = "org-workloads-staging"
    parent_id = aws_organizations_organizational_unit.ou-workloads.id
}

resource "aws_organizations_organizational_unit" "ou-workloads-development" {
    name      = "org-workloads-development"
    parent_id = aws_organizations_organizational_unit.ou-workloads.id
}
