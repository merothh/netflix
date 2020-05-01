.class public final Lo/Object$ActionBar;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionBar"
.end annotation


# instance fields
.field private final a:Lo/NoSuchFieldError$Activity;

.field private b:Lo/NoClassDefFoundError;

.field final d:Lo/NoSuchFieldError;

.field final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/Object$LoaderManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lo/NoSuchFieldError;)V
    .locals 1

    .line 1674
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1667
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/Object$ActionBar;->e:Ljava/util/List;

    .line 1675
    iput-object p1, p0, Lo/Object$ActionBar;->d:Lo/NoSuchFieldError;

    .line 1676
    invoke-virtual {p1}, Lo/NoSuchFieldError;->a()Lo/NoSuchFieldError$Activity;

    move-result-object p1

    iput-object p1, p0, Lo/Object$ActionBar;->a:Lo/NoSuchFieldError$Activity;

    return-void
.end method


# virtual methods
.method public a()Lo/NoSuchFieldError;
    .locals 1

    .line 1683
    invoke-static {}, Lo/Object;->b()V

    .line 1684
    iget-object v0, p0, Lo/Object$ActionBar;->d:Lo/NoSuchFieldError;

    return-object v0
.end method

.method a(Lo/NoClassDefFoundError;)Z
    .locals 1

    .line 1725
    iget-object v0, p0, Lo/Object$ActionBar;->b:Lo/NoClassDefFoundError;

    if-eq v0, p1, :cond_0

    .line 1726
    iput-object p1, p0, Lo/Object$ActionBar;->b:Lo/NoClassDefFoundError;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method c(Ljava/lang/String;)I
    .locals 3

    .line 1733
    iget-object v0, p0, Lo/Object$ActionBar;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1735
    iget-object v2, p0, Lo/Object$ActionBar;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/Object$LoaderManager;

    iget-object v2, v2, Lo/Object$LoaderManager;->d:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public c()Landroid/content/ComponentName;
    .locals 1

    .line 1698
    iget-object v0, p0, Lo/Object$ActionBar;->a:Lo/NoSuchFieldError$Activity;

    invoke-virtual {v0}, Lo/NoSuchFieldError$Activity;->c()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1691
    iget-object v0, p0, Lo/Object$ActionBar;->a:Lo/NoSuchFieldError$Activity;

    invoke-virtual {v0}, Lo/NoSuchFieldError$Activity;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1744
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaRouter.RouteProviderInfo{ packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/Object$ActionBar;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
