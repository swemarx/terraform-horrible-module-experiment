module "get-name" {
	source  = "matti/resource/shell"
	command = "cat ./NAME"
}
