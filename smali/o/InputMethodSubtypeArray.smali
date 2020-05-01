.class public final Lo/InputMethodSubtypeArray;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/SystemTextClassifier$StateListAnimator;


# instance fields
.field private final b:Z

.field private final c:Z

.field private final d:Lo/SharedElementCallback;


# direct methods
.method public constructor <init>(ZZLo/SharedElementCallback;)V
    .locals 1
    .param p1    # Z
        .annotation runtime Ljavax/inject/Named;
            value = "isDebugBuild"
        .end annotation
    .end param
    .param p2    # Z
        .annotation runtime Ljavax/inject/Named;
            value = "isUnderAutomation"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "alertDialogHost"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lo/InputMethodSubtypeArray;->c:Z

    iput-boolean p2, p0, Lo/InputMethodSubtypeArray;->b:Z

    iput-object p3, p0, Lo/InputMethodSubtypeArray;->d:Lo/SharedElementCallback;

    return-void
.end method

.method private final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 40
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v0, "SignupNativeFieldError"

    .line 41
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "Expected Dynecom field is missing. Users may not be able to proceed through sign up."

    goto :goto_0

    :sswitch_1
    const-string v0, "SignupNativeMissingKeyError"

    .line 55
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "Dynecom has sent a string key the client does not recognize. Important UI messaging may be incorrect such as a heading or CTA."

    goto :goto_0

    :sswitch_2
    const-string v0, "SignupNativeIncompleteActionError"

    .line 51
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "Cannot merge Dynecom fields. e.g. the client is expecting both a year and month field to construct an input, but only a month was sent down. Users may not be able to proceed through sign up."

    goto :goto_0

    :sswitch_3
    const-string v0, "SignupNativeUnknownMode"

    .line 58
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "Dynecom has sent a mode the client does not recognize. Users will not be able to proceed through sign up."

    goto :goto_0

    :sswitch_4
    const-string v0, "SignupNativeDataManipulationError"

    .line 44
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "Data from Dynecom could not be manipulated correctly. e.g. a field had a type of Boolean where a type of String was expected. Users may not be able to proceed through sign up."

    goto :goto_0

    :sswitch_5
    const-string v0, "SignupNativeWarnUserMode"

    .line 61
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "Dynecom has sent a warnUserMode to the client. Users will not be able to proceed through sign up."

    goto :goto_0

    :sswitch_6
    const-string v0, "SignupNativeMissingMopLogoUrl"

    .line 48
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "Dynecom has sent down a MOP key the client does not have an image for. The UI will be missing the corresponding MOP image."

    :goto_0
    return-object p1

    .line 64
    :cond_0
    :goto_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown errorCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x56eda4d3 -> :sswitch_6
        -0x4631be3d -> :sswitch_5
        -0x377bda4e -> :sswitch_4
        -0x874ade2 -> :sswitch_3
        0x19171905 -> :sswitch_2
        0x4150c300 -> :sswitch_1
        0x4f1c39fd -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "errorCode"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iget-boolean v0, p0, Lo/InputMethodSubtypeArray;->c:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lo/InputMethodSubtypeArray;->b:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 20
    :cond_0
    invoke-direct {p0, p1}, Lo/InputMethodSubtypeArray;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": \'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x27

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 23
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 25
    new-instance p2, Ljava/lang/Throwable;

    invoke-direct {p2, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 26
    new-instance v0, Lo/PendingIntent$Activity;

    iget-object v1, p0, Lo/InputMethodSubtypeArray;->d:Lo/SharedElementCallback;

    check-cast v1, Landroid/content/Context;

    sget v2, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->A:I

    invoke-direct {v0, v1, v2}, Lo/PendingIntent$Activity;-><init>(Landroid/content/Context;I)V

    const-string v1, "Developer Action Required"

    .line 27
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lo/PendingIntent$Activity;->d(Ljava/lang/CharSequence;)Lo/PendingIntent$Activity;

    move-result-object v0

    .line 28
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lo/PendingIntent$Activity;->c(Ljava/lang/CharSequence;)Lo/PendingIntent$Activity;

    move-result-object p1

    const/4 v0, 0x0

    .line 29
    invoke-virtual {p1, v0}, Lo/PendingIntent$Activity;->a(Z)Lo/PendingIntent$Activity;

    move-result-object p1

    const-string v0, "Ignore"

    .line 30
    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lo/PendingIntent$Activity;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;

    move-result-object p1

    const-string v0, "Throw Exception"

    .line 31
    check-cast v0, Ljava/lang/CharSequence;

    new-instance v1, Lo/InputMethodSubtypeArray$TaskDescription;

    invoke-direct {v1, p2}, Lo/InputMethodSubtypeArray$TaskDescription;-><init>(Ljava/lang/Throwable;)V

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1}, Lo/PendingIntent$Activity;->c(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;

    move-result-object p1

    .line 32
    invoke-virtual {p1}, Lo/PendingIntent$Activity;->a()Lo/PendingIntent;

    move-result-object p1

    .line 33
    invoke-virtual {p1}, Lo/PendingIntent;->show()V

    :cond_1
    :goto_0
    return-void
.end method
