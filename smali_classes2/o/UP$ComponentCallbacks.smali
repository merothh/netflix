.class public final Lo/UP$ComponentCallbacks;
.super Lo/UP;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ComponentCallbacks"
.end annotation


# instance fields
.field private final e:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    const/4 p2, 0x0

    .line 30
    invoke-direct {p0, p2}, Lo/UP;-><init>(Lo/amc;)V

    iput p1, p0, Lo/UP$ComponentCallbacks;->e:I

    return-void
.end method
