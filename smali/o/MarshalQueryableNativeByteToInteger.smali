.class public Lo/MarshalQueryableNativeByteToInteger;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/MarshalQueryableNativeByteToInteger$Activity;
    }
.end annotation


# instance fields
.field private final b:Lo/ConfigurationBoundResourceCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/ConfigurationBoundResourceCache<",
            "[B>;"
        }
    .end annotation
.end field

.field final e:Lo/MarshalQueryableNativeByteToInteger$Activity;


# direct methods
.method public constructor <init>(Lo/RuntimePermissionPresenter;Lo/Face;)V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iget v0, p2, Lo/Face;->i:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/StringParceledListSlice;->a(Z)V

    .line 34
    new-instance v0, Lo/MarshalQueryableNativeByteToInteger$Activity;

    .line 37
    invoke-static {}, Lo/MarshalQueryableStreamConfigurationDuration;->c()Lo/MarshalQueryableStreamConfigurationDuration;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lo/MarshalQueryableNativeByteToInteger$Activity;-><init>(Lo/RuntimePermissionPresenter;Lo/Face;Lo/HighSpeedVideoConfiguration;)V

    iput-object v0, p0, Lo/MarshalQueryableNativeByteToInteger;->e:Lo/MarshalQueryableNativeByteToInteger$Activity;

    .line 38
    new-instance p1, Lo/MarshalQueryableNativeByteToInteger$5;

    invoke-direct {p1, p0}, Lo/MarshalQueryableNativeByteToInteger$5;-><init>(Lo/MarshalQueryableNativeByteToInteger;)V

    iput-object p1, p0, Lo/MarshalQueryableNativeByteToInteger;->b:Lo/ConfigurationBoundResourceCache;

    return-void
.end method


# virtual methods
.method public a([B)V
    .locals 1

    .line 51
    iget-object v0, p0, Lo/MarshalQueryableNativeByteToInteger;->e:Lo/MarshalQueryableNativeByteToInteger$Activity;

    invoke-virtual {v0, p1}, Lo/MarshalQueryableNativeByteToInteger$Activity;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public b(I)Lo/CompatibilityInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lo/CompatibilityInfo<",
            "[B>;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lo/MarshalQueryableNativeByteToInteger;->e:Lo/MarshalQueryableNativeByteToInteger$Activity;

    invoke-virtual {v0, p1}, Lo/MarshalQueryableNativeByteToInteger$Activity;->a(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lo/MarshalQueryableNativeByteToInteger;->b:Lo/ConfigurationBoundResourceCache;

    invoke-static {p1, v0}, Lo/CompatibilityInfo;->c(Ljava/lang/Object;Lo/ConfigurationBoundResourceCache;)Lo/CompatibilityInfo;

    move-result-object p1

    return-object p1
.end method
