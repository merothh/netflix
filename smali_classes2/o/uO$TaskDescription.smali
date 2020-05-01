.class final Lo/uO$TaskDescription;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/uO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TaskDescription"
.end annotation


# instance fields
.field public a:Lo/uO$Activity;

.field public b:Lo/Bj;

.field public c:Z

.field public final d:Lo/uP;


# direct methods
.method public constructor <init>(Lo/uP;Lo/uO$Activity;Lo/Bj;)V
    .locals 0

    .line 488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 489
    iput-object p1, p0, Lo/uO$TaskDescription;->d:Lo/uP;

    .line 490
    iput-object p2, p0, Lo/uO$TaskDescription;->a:Lo/uO$Activity;

    .line 491
    iput-object p3, p0, Lo/uO$TaskDescription;->b:Lo/Bj;

    return-void
.end method
