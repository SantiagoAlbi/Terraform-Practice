resource "aws_instance" "public_instance" {
  ami                     = var.ec2_specs.ami
  instance_type           = var.ec2_specs.instance_type
  subnet_id = aws_subnet.public_subnet.id
  key_name = data.aws_key_pair.key.key_name
  vpc_security_group_ids = [aws_security_group.sg_public_instance.id]
  user_data = file("userdata.sh") 

provisioner "local-exec" {
  command = "echo instancia creada con IP ${aws_instance.public_instance.public_ip} >> datos_instancia.txt"

}

provisioner "local-exec" {
  when = destroy
  command = "echo Instancia ${self.public_ip} Destruida >> dats_iinstancia.txt"
  
}


}

#No es muy utilizado, esta en el examen

