import { Prop, Schema, SchemaFactory } from "@nestjs/mongoose";
import mongoose, { HydratedDocument } from "mongoose";

export type PostDocument = HydratedDocument<Posts>;

@Schema({ timestamps: true, versionKey: false })
export class Posts {
  _id: mongoose.Schema.Types.ObjectId;

  @Prop()
  filename: string;

  @Prop()
  tag: string;

  @Prop()
  price: number;

  @Prop()
  email: string;
}

export const PostSchema = SchemaFactory.createForClass(Posts);
