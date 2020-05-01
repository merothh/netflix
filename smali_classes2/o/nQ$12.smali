.class Lo/nQ$12;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/nQ;->I()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/util/Map;

.field final synthetic e:Lo/nQ;


# direct methods
.method constructor <init>(Lo/nQ;Ljava/util/Map;)V
    .locals 0

    .line 960
    iput-object p1, p0, Lo/nQ$12;->e:Lo/nQ;

    iput-object p2, p0, Lo/nQ$12;->b:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "nf_offlineAgent"

    const-string v1, "buildNewUiList now on worker thread.. regenerate"

    .line 963
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    iget-object v0, p0, Lo/nQ$12;->e:Lo/nQ;

    iget-object v1, p0, Lo/nQ$12;->b:Ljava/util/Map;

    invoke-static {v0, v1}, Lo/nQ;->c(Lo/nQ;Ljava/util/Map;)V

    return-void
.end method
