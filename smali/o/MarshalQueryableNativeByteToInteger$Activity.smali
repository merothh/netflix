.class Lo/MarshalQueryableNativeByteToInteger$Activity;
.super Lo/MarshalQueryablePair;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/MarshalQueryableNativeByteToInteger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Activity"
.end annotation


# direct methods
.method public constructor <init>(Lo/RuntimePermissionPresenter;Lo/Face;Lo/HighSpeedVideoConfiguration;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2, p3}, Lo/MarshalQueryablePair;-><init>(Lo/RuntimePermissionPresenter;Lo/Face;Lo/HighSpeedVideoConfiguration;)V

    return-void
.end method


# virtual methods
.method public j(I)Lo/SizeAreaComparator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lo/SizeAreaComparator<",
            "[B>;"
        }
    .end annotation

    .line 72
    new-instance v0, Lo/ColorSpaceTransform;

    .line 73
    invoke-virtual {p0, p1}, Lo/MarshalQueryableNativeByteToInteger$Activity;->e(I)I

    move-result p1

    iget-object v1, p0, Lo/MarshalQueryableNativeByteToInteger$Activity;->c:Lo/Face;

    iget v1, v1, Lo/Face;->i:I

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lo/ColorSpaceTransform;-><init>(III)V

    return-object v0
.end method
