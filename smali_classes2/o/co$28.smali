.class Lo/co$28;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/co;->d(Ljava/util/Map;Lcom/netflix/mediaclient/android/app/Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/co;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lcom/netflix/mediaclient/android/app/Status;


# direct methods
.method constructor <init>(Lo/co;Ljava/util/Map;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 436
    iput-object p1, p0, Lo/co$28;->a:Lo/co;

    iput-object p2, p0, Lo/co$28;->b:Ljava/util/Map;

    iput-object p3, p0, Lo/co$28;->c:Lcom/netflix/mediaclient/android/app/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 439
    iget-object v0, p0, Lo/co$28;->a:Lo/co;

    invoke-static {v0}, Lo/co;->b(Lo/co;)Lo/ci;

    move-result-object v0

    iget-object v1, p0, Lo/co$28;->b:Ljava/util/Map;

    iget-object v2, p0, Lo/co$28;->c:Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface {v0, v1, v2}, Lo/ci;->d(Ljava/util/Map;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method
