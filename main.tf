resource "aws_instance" "testinstance" {

ami = "ami — 028598a84ca601344"

instance_type = "t2.micro"

associate_public_ip_address = true

key_name = "DonotDeleteKeyPair"

tags {

  Name = “testinstance”

}

}
