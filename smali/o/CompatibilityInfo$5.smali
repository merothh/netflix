.class final Lo/CompatibilityInfo$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ConfigurationBoundResourceCache;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CompatibilityInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/ConfigurationBoundResourceCache<",
        "Ljava/io/Closeable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 88
    check-cast p1, Ljava/io/Closeable;

    invoke-virtual {p0, p1}, Lo/CompatibilityInfo$5;->e(Ljava/io/Closeable;)V

    return-void
.end method

.method public e(Ljava/io/Closeable;)V
    .locals 1

    const/4 v0, 0x1

    .line 92
    :try_start_0
    invoke-static {p1, v0}, Lo/ShortcutManager;->c(Ljava/io/Closeable;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
