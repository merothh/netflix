.class Lo/ot$12;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/oR;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ot;->O()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/ot;


# direct methods
.method constructor <init>(Lo/ot;)V
    .locals 0

    .line 1175
    iput-object p1, p0, Lo/ot$12;->c:Lo/ot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lo/sE;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 1178
    iget-object v0, p0, Lo/ot$12;->c:Lo/ot;

    invoke-static {v0, p1, p2}, Lo/ot;->c(Lo/ot;Lo/sE;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method
