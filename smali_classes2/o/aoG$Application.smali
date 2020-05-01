.class public final Lo/aoG$Application;
.super Lo/apU;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/aoG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Application"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/apU<",
        "Lo/aoG$Activity;",
        ">;"
    }
.end annotation


# instance fields
.field public b:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 514
    invoke-direct {p0}, Lo/apU;-><init>()V

    iput-wide p1, p0, Lo/aoG$Application;->b:J

    return-void
.end method
