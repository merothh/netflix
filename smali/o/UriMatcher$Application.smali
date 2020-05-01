.class public Lo/UriMatcher$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/AndroidTestBaseUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UriMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Application"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/AndroidTestBaseUpdater<",
        "TR;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/bumptech/glide/load/DataSource;Z)Lo/AppsQueryHelper;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/DataSource;",
            "Z)",
            "Lo/AppsQueryHelper<",
            "TR;>;"
        }
    .end annotation

    .line 27
    sget-object p1, Lo/UriMatcher;->c:Lo/UriMatcher;

    return-object p1
.end method
