.class public final Lo/AndroidBidi;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final e(Ljava/lang/String;)Lo/FontConfig;
    .locals 1

    const-string v0, "dcbOptionMode"

    .line 43
    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "editdcbOptionMode"

    invoke-static {p1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 46
    :cond_0
    sget-object p1, Lo/EventLogger;->c:Lo/EventLogger;

    invoke-virtual {p1}, Lo/EventLogger;->i()Lo/FontConfig;

    move-result-object p1

    goto :goto_1

    .line 44
    :cond_1
    :goto_0
    sget-object p1, Lo/EventLogger;->c:Lo/EventLogger;

    invoke-virtual {p1}, Lo/EventLogger;->m()Lo/FontConfig;

    move-result-object p1

    :goto_1
    return-object p1
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Lo/FontConfig;
    .locals 2

    const-string v0, "fieldId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string p2, "coDebitFirstName"

    .line 24
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p1, Lo/EventLogger;->c:Lo/EventLogger;

    invoke-virtual {p1}, Lo/EventLogger;->t()Lo/FontConfig;

    move-result-object p1

    goto/16 :goto_0

    :sswitch_1
    const-string p2, "debitZipcode"

    .line 15
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p1, Lo/EventLogger;->c:Lo/EventLogger;

    invoke-virtual {p1}, Lo/EventLogger;->f()Lo/FontConfig;

    move-result-object p1

    goto/16 :goto_0

    :sswitch_2
    const-string p2, "deDebitPostalCode"

    .line 35
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p1, Lo/EventLogger;->c:Lo/EventLogger;

    invoke-virtual {p1}, Lo/EventLogger;->z()Lo/FontConfig;

    move-result-object p1

    goto/16 :goto_0

    :sswitch_3
    const-string p2, "coDebitAccountNumber"

    .line 23
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p1, Lo/EventLogger;->c:Lo/EventLogger;

    invoke-virtual {p1}, Lo/EventLogger;->k()Lo/FontConfig;

    move-result-object p1

    goto/16 :goto_0

    :sswitch_4
    const-string p2, "coDebitBankChoice"

    .line 21
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p1, Lo/EventLogger;->c:Lo/EventLogger;

    invoke-virtual {p1}, Lo/EventLogger;->n()Lo/FontConfig;

    move-result-object p1

    goto/16 :goto_0

    :sswitch_5
    const-string p2, "debitCardSecurityCode"

    .line 16
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p1, Lo/EventLogger;->c:Lo/EventLogger;

    invoke-virtual {p1}, Lo/EventLogger;->e()Lo/FontConfig;

    move-result-object p1

    goto/16 :goto_0

    :sswitch_6
    const-string p2, "birthMonth"

    .line 29
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p1, Lo/EventLogger;->c:Lo/EventLogger;

    invoke-virtual {p1}, Lo/EventLogger;->x()Lo/FontConfig;

    move-result-object p1

    goto/16 :goto_0

    :sswitch_7
    const-string p2, "securityCode"

    .line 12
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p1, Lo/EventLogger;->c:Lo/EventLogger;

    invoke-virtual {p1}, Lo/EventLogger;->a()Lo/FontConfig;

    move-result-object p1

    goto/16 :goto_0

    :sswitch_8
    const-string p2, "deDebitAccountNumber"

    .line 37
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p1, Lo/EventLogger;->c:Lo/EventLogger;

    invoke-virtual {p1}, Lo/EventLogger;->B()Lo/FontConfig;

    move-result-object p1

    goto/16 :goto_0

    :sswitch_9
    const-string p2, "deDebitBirthMonth"

    .line 32
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p1, Lo/EventLogger;->c:Lo/EventLogger;

    invoke-virtual {p1}, Lo/EventLogger;->y()Lo/FontConfig;

    move-result-object p1

    goto/16 :goto_0

    :sswitch_a
    const-string p2, "coDebitLastName"

    .line 25
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p1, Lo/EventLogger;->c:Lo/EventLogger;

    invoke-virtual {p1}, Lo/EventLogger;->s()Lo/FontConfig;

    move-result-object p1

    goto/16 :goto_0

    :sswitch_b
    const-string p2, "deDebitStreet"

    .line 34
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p1, Lo/EventLogger;->c:Lo/EventLogger;

    invoke-virtual {p1}, Lo/EventLogger;->C()Lo/FontConfig;

    move-result-object p1

    goto/16 :goto_0

    :sswitch_c
    const-string p2, "creditZipcode"

    .line 13
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p1, Lo/EventLogger;->c:Lo/EventLogger;

    invoke-virtual {p1}, Lo/EventLogger;->g()Lo/FontConfig;

    move-result-object p1

    goto/16 :goto_0

    :sswitch_d
    const-string p2, "firstName"

    .line 17
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p1, Lo/EventLogger;->c:Lo/EventLogger;

    invoke-virtual {p1}, Lo/EventLogger;->h()Lo/FontConfig;

    move-result-object p1

    goto/16 :goto_0

    :sswitch_e
    const-string p2, "ownerName"

    .line 38
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p1, Lo/EventLogger;->c:Lo/EventLogger;

    invoke-virtual {p1}, Lo/EventLogger;->I()Lo/FontConfig;

    move-result-object p1

    goto/16 :goto_0

    :sswitch_f
    const-string p2, "name"

    .line 27
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p1, Lo/EventLogger;->c:Lo/EventLogger;

    invoke-virtual {p1}, Lo/EventLogger;->q()Lo/FontConfig;

    move-result-object p1

    goto/16 :goto_0

    :sswitch_10
    const-string p2, "deDebitCity"

    .line 36
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p1, Lo/EventLogger;->c:Lo/EventLogger;

    invoke-virtual {p1}, Lo/EventLogger;->D()Lo/FontConfig;

    move-result-object p1

    goto/16 :goto_0

    :sswitch_11
    const-string p2, "creditCardNumber"

    .line 10
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p1, Lo/EventLogger;->c:Lo/EventLogger;

    invoke-virtual {p1}, Lo/EventLogger;->b()Lo/FontConfig;

    move-result-object p1

    goto/16 :goto_0

    :sswitch_12
    const-string p2, "coDebitAccountType"

    .line 22
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p1, Lo/EventLogger;->c:Lo/EventLogger;

    invoke-virtual {p1}, Lo/EventLogger;->p()Lo/FontConfig;

    move-result-object p1

    goto/16 :goto_0

    :sswitch_13
    const-string p2, "debitCardNumber"

    .line 14
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p1, Lo/EventLogger;->c:Lo/EventLogger;

    invoke-virtual {p1}, Lo/EventLogger;->d()Lo/FontConfig;

    move-result-object p1

    goto/16 :goto_0

    :sswitch_14
    const-string v0, "phoneNumber"

    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lo/AndroidBidi;->e(Ljava/lang/String;)Lo/FontConfig;

    move-result-object p1

    goto/16 :goto_0

    :sswitch_15
    const-string p2, "birthYear"

    .line 30
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p1, Lo/EventLogger;->c:Lo/EventLogger;

    invoke-virtual {p1}, Lo/EventLogger;->u()Lo/FontConfig;

    move-result-object p1

    goto/16 :goto_0

    :sswitch_16
    const-string p2, "birthDate"

    .line 28
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p1, Lo/EventLogger;->c:Lo/EventLogger;

    invoke-virtual {p1}, Lo/EventLogger;->w()Lo/FontConfig;

    move-result-object p1

    goto :goto_0

    :sswitch_17
    const-string p2, "lastName"

    .line 18
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p1, Lo/EventLogger;->c:Lo/EventLogger;

    invoke-virtual {p1}, Lo/EventLogger;->j()Lo/FontConfig;

    move-result-object p1

    goto :goto_0

    :sswitch_18
    const-string p2, "creditCardSecurityCode"

    .line 11
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p1, Lo/EventLogger;->c:Lo/EventLogger;

    invoke-virtual {p1}, Lo/EventLogger;->c()Lo/FontConfig;

    move-result-object p1

    goto :goto_0

    :sswitch_19
    const-string p2, "coDebitCustomerIdentification"

    .line 26
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p1, Lo/EventLogger;->c:Lo/EventLogger;

    invoke-virtual {p1}, Lo/EventLogger;->r()Lo/FontConfig;

    move-result-object p1

    goto :goto_0

    :sswitch_1a
    const-string p2, "deDebitBirthYear"

    .line 33
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p1, Lo/EventLogger;->c:Lo/EventLogger;

    invoke-virtual {p1}, Lo/EventLogger;->A()Lo/FontConfig;

    move-result-object p1

    goto :goto_0

    :sswitch_1b
    const-string p2, "deDebitBirthDate"

    .line 31
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p1, Lo/EventLogger;->c:Lo/EventLogger;

    invoke-virtual {p1}, Lo/EventLogger;->v()Lo/FontConfig;

    move-result-object p1

    goto :goto_0

    :sswitch_1c
    const-string p2, "smsCode"

    .line 20
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p1, Lo/EventLogger;->c:Lo/EventLogger;

    invoke-virtual {p1}, Lo/EventLogger;->o()Lo/FontConfig;

    move-result-object p1

    goto :goto_0

    :sswitch_1d
    const-string p2, "signupOtpCode"

    .line 19
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p1, Lo/EventLogger;->c:Lo/EventLogger;

    invoke-virtual {p1}, Lo/EventLogger;->o()Lo/FontConfig;

    move-result-object p1

    :goto_0
    return-object p1

    .line 39
    :cond_0
    :goto_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown field id \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x27

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2

    :sswitch_data_0
    .sparse-switch
        -0x7ea18080 -> :sswitch_1d
        -0x7c1e751a -> :sswitch_1c
        -0x7270e79e -> :sswitch_1b
        -0x72674f0f -> :sswitch_1a
        -0x692d8e14 -> :sswitch_19
        -0x68c2726a -> :sswitch_18
        -0x56ffb9bf -> :sswitch_17
        -0x481f9ef3 -> :sswitch_16
        -0x48160664 -> :sswitch_15
        -0x471b45a9 -> :sswitch_14
        -0x470a0f7b -> :sswitch_13
        -0x457050f9 -> :sswitch_12
        -0x449b65ae -> :sswitch_11
        -0x1dda1f0a -> :sswitch_10
        0x337a8b -> :sswitch_f
        0x10a4fde -> :sswitch_e
        0x7eae95b -> :sswitch_d
        0x9425f55 -> :sswitch_c
        0xc18e0ce -> :sswitch_b
        0x20714641 -> :sswitch_a
        0x24d9104c -> :sswitch_9
        0x29e340ab -> :sswitch_8
        0x3024f94d -> :sswitch_7
        0x44b0dd01 -> :sswitch_6
        0x45d43189 -> :sswitch_5
        0x487ab2fd -> :sswitch_4
        0x4ae93bd6 -> :sswitch_3
        0x5807f4a3 -> :sswitch_2
        0x784cee02 -> :sswitch_1
        0x7e99e95b -> :sswitch_0
    .end sparse-switch
.end method
