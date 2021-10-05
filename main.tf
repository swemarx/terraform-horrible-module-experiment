module "get-name" {
	source = "./modules/get-name"
}

module "construct-greeting" {
	source = "./modules/construct-greeting"
	name   = module.get-name.name
}

resource "null_resource" "self" {
	provisioner "local-exec" {
		command = "echo ${module.construct-greeting.greeting}"
	}
}
