.class Lo/ot$8;
.super Lo/nS$Application;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ot;->c(Lo/ov$TaskDescription;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/ot;

.field final synthetic b:Lo/ov$TaskDescription;


# direct methods
.method constructor <init>(Lo/ot;Lo/ov$TaskDescription;)V
    .locals 0

    .line 564
    iput-object p1, p0, Lo/ot$8;->a:Lo/ot;

    iput-object p2, p0, Lo/ot$8;->b:Lo/ov$TaskDescription;

    invoke-direct {p0}, Lo/nS$Application;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 567
    iget-object p1, p0, Lo/ot$8;->b:Lo/ov$TaskDescription;

    if-eqz p1, :cond_0

    .line 568
    iget-object v0, p0, Lo/ot$8;->a:Lo/ot;

    invoke-interface {p1, v0}, Lo/ov$TaskDescription;->b(Lo/ov;)V

    :cond_0
    return-void
.end method
