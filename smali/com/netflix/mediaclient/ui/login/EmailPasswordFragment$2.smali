.class Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment$2;
.super Ljava/lang/Object;
.source "EmailPasswordFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment$2;->this$0:Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isLoginId(I)Z
    .locals 1

    .prologue
    .line 179
    const v0, 0x7f0c0011

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    .line 168
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    const-string/jumbo v0, "LoginBaseFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Editor action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", keyEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_0
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment$2;->isLoginId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment$2;->this$0:Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;->access$100(Lcom/netflix/mediaclient/ui/login/EmailPasswordFragment;)V

    .line 173
    const/4 v0, 0x1

    .line 175
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
