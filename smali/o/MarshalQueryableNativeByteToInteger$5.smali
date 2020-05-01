.class Lo/MarshalQueryableNativeByteToInteger$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ConfigurationBoundResourceCache;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/MarshalQueryableNativeByteToInteger;-><init>(Lo/RuntimePermissionPresenter;Lo/Face;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/ConfigurationBoundResourceCache<",
        "[B>;"
    }
.end annotation


# instance fields
.field final synthetic d:Lo/MarshalQueryableNativeByteToInteger;


# direct methods
.method constructor <init>(Lo/MarshalQueryableNativeByteToInteger;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lo/MarshalQueryableNativeByteToInteger$5;->d:Lo/MarshalQueryableNativeByteToInteger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 38
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lo/MarshalQueryableNativeByteToInteger$5;->b([B)V

    return-void
.end method

.method public b([B)V
    .locals 1

    .line 41
    iget-object v0, p0, Lo/MarshalQueryableNativeByteToInteger$5;->d:Lo/MarshalQueryableNativeByteToInteger;

    invoke-virtual {v0, p1}, Lo/MarshalQueryableNativeByteToInteger;->a([B)V

    return-void
.end method
