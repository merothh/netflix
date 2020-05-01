.class final Lo/AlwaysOnHotwordDetector$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ClassFormatError;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/AlwaysOnHotwordDetector;->c(Lo/VoiceInteractionService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/ClassFormatError<",
        "Lcom/netflix/android/moneyball/fields/StringField;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lo/AlwaysOnHotwordDetector;

.field final synthetic c:Lo/VoiceInteractionService;


# direct methods
.method constructor <init>(Lo/AlwaysOnHotwordDetector;Lo/VoiceInteractionService;)V
    .locals 0

    iput-object p1, p0, Lo/AlwaysOnHotwordDetector$Application;->b:Lo/AlwaysOnHotwordDetector;

    iput-object p2, p0, Lo/AlwaysOnHotwordDetector$Application;->c:Lo/VoiceInteractionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Lcom/netflix/android/moneyball/fields/StringField;)V
    .locals 1

    .line 23
    iget-object p1, p0, Lo/AlwaysOnHotwordDetector$Application;->c:Lo/VoiceInteractionService;

    invoke-virtual {p1}, Lo/VoiceInteractionService;->d()Lo/Cloneable;

    move-result-object p1

    invoke-virtual {p1}, Lo/Cloneable;->d()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lo/AlwaysOnHotwordDetector$Application;->b:Lo/AlwaysOnHotwordDetector;

    invoke-virtual {p1}, Lo/AlwaysOnHotwordDetector;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    const-string v0, "editText.text"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 24
    iget-object p1, p0, Lo/AlwaysOnHotwordDetector$Application;->b:Lo/AlwaysOnHotwordDetector;

    invoke-virtual {p1}, Lo/AlwaysOnHotwordDetector;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    const-string v0, ""

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 9
    check-cast p1, Lcom/netflix/android/moneyball/fields/StringField;

    invoke-virtual {p0, p1}, Lo/AlwaysOnHotwordDetector$Application;->d(Lcom/netflix/android/moneyball/fields/StringField;)V

    return-void
.end method
