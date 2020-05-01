.class Lo/co$8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/co;->b(Lo/AU;Ljava/lang/Boolean;Lcom/netflix/mediaclient/android/app/Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Boolean;

.field final synthetic c:Lcom/netflix/mediaclient/android/app/Status;

.field final synthetic d:Lo/co;

.field final synthetic e:Lo/AU;


# direct methods
.method constructor <init>(Lo/co;Lo/AU;Ljava/lang/Boolean;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lo/co$8;->d:Lo/co;

    iput-object p2, p0, Lo/co$8;->e:Lo/AU;

    iput-object p3, p0, Lo/co$8;->a:Ljava/lang/Boolean;

    iput-object p4, p0, Lo/co$8;->c:Lcom/netflix/mediaclient/android/app/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 241
    invoke-static {}, Lo/aeB;->a()Z

    .line 242
    iget-object v0, p0, Lo/co$8;->d:Lo/co;

    invoke-static {v0}, Lo/co;->b(Lo/co;)Lo/ci;

    move-result-object v0

    iget-object v1, p0, Lo/co$8;->e:Lo/AU;

    iget-object v2, p0, Lo/co$8;->a:Ljava/lang/Boolean;

    iget-object v3, p0, Lo/co$8;->c:Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface {v0, v1, v2, v3}, Lo/ci;->b(Lo/AU;Ljava/lang/Boolean;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method
