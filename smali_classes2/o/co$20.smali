.class Lo/co$20;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/co;->a(Lo/Bs;Lcom/netflix/mediaclient/android/app/Status;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/Bs;

.field final synthetic c:Z

.field final synthetic d:Lo/co;

.field final synthetic e:Lcom/netflix/mediaclient/android/app/Status;


# direct methods
.method constructor <init>(Lo/co;Lo/Bs;Lcom/netflix/mediaclient/android/app/Status;Z)V
    .locals 0

    .line 345
    iput-object p1, p0, Lo/co$20;->d:Lo/co;

    iput-object p2, p0, Lo/co$20;->b:Lo/Bs;

    iput-object p3, p0, Lo/co$20;->e:Lcom/netflix/mediaclient/android/app/Status;

    iput-boolean p4, p0, Lo/co$20;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 348
    iget-object v0, p0, Lo/co$20;->d:Lo/co;

    invoke-static {v0}, Lo/co;->b(Lo/co;)Lo/ci;

    move-result-object v0

    iget-object v1, p0, Lo/co$20;->b:Lo/Bs;

    iget-object v2, p0, Lo/co$20;->e:Lcom/netflix/mediaclient/android/app/Status;

    iget-boolean v3, p0, Lo/co$20;->c:Z

    invoke-interface {v0, v1, v2, v3}, Lo/ci;->a(Lo/Bs;Lcom/netflix/mediaclient/android/app/Status;Z)V

    return-void
.end method
