.class final Lo/afk$Activity;
.super Lo/UriPermission;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/afk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Activity"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x96

    const/4 v1, 0x0

    .line 674
    invoke-direct {p0, v0, v1}, Lo/UriPermission;-><init>(IZ)V

    return-void
.end method


# virtual methods
.method public b(Lcom/bumptech/glide/load/DataSource;Z)Lo/AppsQueryHelper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/DataSource;",
            "Z)",
            "Lo/AppsQueryHelper<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    const-string v0, "dataSource"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 676
    sget-object v0, Lcom/bumptech/glide/load/DataSource;->b:Lcom/bumptech/glide/load/DataSource;

    if-eq p1, v0, :cond_0

    .line 677
    invoke-static {}, Lo/UriMatcher;->e()Lo/AppsQueryHelper;

    move-result-object p1

    const-string p2, "NoTransition.get()"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 679
    :cond_0
    invoke-super {p0, p1, p2}, Lo/UriPermission;->b(Lcom/bumptech/glide/load/DataSource;Z)Lo/AppsQueryHelper;

    move-result-object p1

    const-string p2, "super.build(dataSource, isFirstResource)"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
