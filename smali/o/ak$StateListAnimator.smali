.class public final Lo/ak$StateListAnimator;
.super Lo/JsPromptResult;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ak;-><init>(ZZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/ak;


# direct methods
.method constructor <init>(Lo/ak;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 107
    iput-object p1, p0, Lo/ak$StateListAnimator;->e:Lo/ak;

    invoke-direct {p0}, Lo/JsPromptResult;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lo/Plugin;Landroid/content/Intent;)V
    .locals 0

    const-string p2, "userInputManager"

    invoke-static {p1, p2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    sget-object p1, Lo/ak;->c:Lo/ak$Activity;

    check-cast p1, Lo/MessagePdu;

    return-void
.end method

.method public b(Lo/Plugin;)V
    .locals 1

    const-string v0, "userInputManager"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    sget-object p1, Lo/ak;->c:Lo/ak$Activity;

    check-cast p1, Lo/MessagePdu;

    .line 115
    iget-object p1, p0, Lo/ak$StateListAnimator;->e:Lo/ak;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lo/ak;->b(Z)V

    .line 117
    iget-object p1, p0, Lo/ak$StateListAnimator;->e:Lo/ak;

    invoke-virtual {p1}, Lo/ak;->m()V

    return-void
.end method
