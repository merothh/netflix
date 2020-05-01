.class public final Lo/pH;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final c(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/StreamProfileType;
    .locals 1

    const-string v0, "s"

    invoke-static {p0, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_4

    :sswitch_0
    const-string v0, "EVEAV1"

    .line 8
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_1

    :sswitch_1
    const-string v0, "av1-enc-latest"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_1

    :sswitch_2
    const-string v0, "4tiles"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_1

    :sswitch_3
    const-string v0, "AV1_10bit"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_1

    :sswitch_4
    const-string v0, "al1-vp9-eve"

    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_2

    :sswitch_5
    const-string v0, "AV1_10bit_FGN"

    .line 8
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_1

    :sswitch_6
    const-string v0, "ce3"

    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :sswitch_7
    const-string v0, "al1"

    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_2

    :sswitch_8
    const-string v0, "al0"

    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_3

    :sswitch_9
    const-string v0, "CE3"

    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    :goto_0
    sget-object p0, Lcom/netflix/mediaclient/service/player/StreamProfileType;->d:Lcom/netflix/mediaclient/service/player/StreamProfileType;

    goto :goto_5

    :sswitch_a
    const-string v0, "AV1"

    .line 8
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    :goto_1
    sget-object p0, Lcom/netflix/mediaclient/service/player/StreamProfileType;->e:Lcom/netflix/mediaclient/service/player/StreamProfileType;

    goto :goto_5

    :sswitch_b
    const-string v0, "AL1"

    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    :goto_2
    sget-object p0, Lcom/netflix/mediaclient/service/player/StreamProfileType;->c:Lcom/netflix/mediaclient/service/player/StreamProfileType;

    goto :goto_5

    :sswitch_c
    const-string v0, "AL0"

    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    :goto_3
    sget-object p0, Lcom/netflix/mediaclient/service/player/StreamProfileType;->a:Lcom/netflix/mediaclient/service/player/StreamProfileType;

    goto :goto_5

    .line 9
    :cond_0
    :goto_4
    sget-object p0, Lcom/netflix/mediaclient/service/player/StreamProfileType;->b:Lcom/netflix/mediaclient/service/player/StreamProfileType;

    :goto_5
    return-object p0

    :sswitch_data_0
    .sparse-switch
        0xfd65 -> :sswitch_c
        0xfd66 -> :sswitch_b
        0xfe9c -> :sswitch_a
        0x10411 -> :sswitch_9
        0x17965 -> :sswitch_8
        0x17966 -> :sswitch_7
        0x18011 -> :sswitch_6
        0x21297c99 -> :sswitch_5
        0x41c8e65f -> :sswitch_4
        0x4ffccb2b -> :sswitch_3
        0x5f5003d1 -> :sswitch_2
        0x77691fab -> :sswitch_1
        0x7a9aa468 -> :sswitch_0
    .end sparse-switch
.end method
