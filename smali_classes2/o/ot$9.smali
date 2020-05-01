.class Lo/ot$9;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/oR;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ot;->a(Lo/ov$Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/ov$Activity;

.field final synthetic c:Lo/ot;


# direct methods
.method constructor <init>(Lo/ot;Lo/ov$Activity;)V
    .locals 0

    .line 470
    iput-object p1, p0, Lo/ot$9;->c:Lo/ot;

    iput-object p2, p0, Lo/ot$9;->b:Lo/ov$Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lo/sE;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 473
    iget-object v0, p0, Lo/ot$9;->c:Lo/ot;

    iget-object v1, p0, Lo/ot$9;->b:Lo/ov$Activity;

    invoke-static {v0, p1, p2, v1}, Lo/ot;->b(Lo/ot;Lo/sE;Lcom/netflix/mediaclient/android/app/Status;Lo/ov$Activity;)V

    return-void
.end method
