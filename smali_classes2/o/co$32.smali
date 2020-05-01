.class Lo/co$32;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/co;->e(ZLcom/netflix/mediaclient/android/app/Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Z

.field final synthetic d:Lcom/netflix/mediaclient/android/app/Status;

.field final synthetic e:Lo/co;


# direct methods
.method constructor <init>(Lo/co;ZLcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 507
    iput-object p1, p0, Lo/co$32;->e:Lo/co;

    iput-boolean p2, p0, Lo/co$32;->b:Z

    iput-object p3, p0, Lo/co$32;->d:Lcom/netflix/mediaclient/android/app/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 510
    iget-object v0, p0, Lo/co$32;->e:Lo/co;

    invoke-static {v0}, Lo/co;->b(Lo/co;)Lo/ci;

    move-result-object v0

    iget-boolean v1, p0, Lo/co$32;->b:Z

    iget-object v2, p0, Lo/co$32;->d:Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface {v0, v1, v2}, Lo/ci;->e(ZLcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method
