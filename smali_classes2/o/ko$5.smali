.class Lo/ko$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ko;->b(Ljava/lang/String;Lcom/netflix/mediaclient/service/mdx/MdxLoginPolicyEnum;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/netflix/mediaclient/service/mdx/MdxLoginPolicyEnum;

.field final synthetic c:Z

.field final synthetic d:Lo/ko;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/ko;ZLjava/lang/String;Lcom/netflix/mediaclient/service/mdx/MdxLoginPolicyEnum;Ljava/lang/String;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lo/ko$5;->d:Lo/ko;

    iput-boolean p2, p0, Lo/ko$5;->c:Z

    iput-object p3, p0, Lo/ko$5;->a:Ljava/lang/String;

    iput-object p4, p0, Lo/ko$5;->b:Lcom/netflix/mediaclient/service/mdx/MdxLoginPolicyEnum;

    iput-object p5, p0, Lo/ko$5;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 223
    iget-boolean v0, p0, Lo/ko$5;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ko$5;->a:Ljava/lang/String;

    invoke-static {v0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lo/ko$5;->d:Lo/ko;

    invoke-static {v0}, Lo/ko;->e(Lo/ko;)Lo/kI;

    move-result-object v0

    iget-object v1, p0, Lo/ko$5;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/kI;->o(Ljava/lang/String;)V

    .line 227
    :cond_0
    iget-object v0, p0, Lo/ko$5;->b:Lcom/netflix/mediaclient/service/mdx/MdxLoginPolicyEnum;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 228
    iget-object v0, p0, Lo/ko$5;->d:Lo/ko;

    invoke-static {v0}, Lo/ko;->e(Lo/ko;)Lo/kI;

    move-result-object v0

    iget-object v2, p0, Lo/ko$5;->e:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lo/kI;->d(Ljava/lang/String;Z)V

    goto :goto_0

    .line 231
    :cond_1
    new-instance v2, Lo/kx;

    invoke-direct {v2, v0}, Lo/kx;-><init>(Lcom/netflix/mediaclient/service/mdx/MdxLoginPolicyEnum;)V

    .line 232
    iget-object v0, p0, Lo/ko$5;->d:Lo/ko;

    invoke-static {v0}, Lo/ko;->e(Lo/ko;)Lo/kI;

    move-result-object v0

    iget-object v3, p0, Lo/ko$5;->e:Ljava/lang/String;

    invoke-virtual {v0, v3, v1, v2}, Lo/kI;->a(Ljava/lang/String;ZLo/kx;)V

    :goto_0
    return-void
.end method
