.class public final Lo/OutOfMemoryError;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/OutOfMemoryError$ActionBar;
    }
.end annotation


# static fields
.field public static final a:Lo/OutOfMemoryError;


# instance fields
.field private final c:Landroid/os/Bundle;

.field e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 56
    new-instance v0, Lo/OutOfMemoryError;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/OutOfMemoryError;-><init>(Landroid/os/Bundle;Ljava/util/List;)V

    sput-object v0, Lo/OutOfMemoryError;->a:Lo/OutOfMemoryError;

    return-void
.end method

.method constructor <init>(Landroid/os/Bundle;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lo/OutOfMemoryError;->c:Landroid/os/Bundle;

    .line 60
    iput-object p2, p0, Lo/OutOfMemoryError;->e:Ljava/util/List;

    return-void
.end method

.method public static e(Landroid/os/Bundle;)Lo/OutOfMemoryError;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 207
    new-instance v1, Lo/OutOfMemoryError;

    invoke-direct {v1, p0, v0}, Lo/OutOfMemoryError;-><init>(Landroid/os/Bundle;Ljava/util/List;)V

    move-object v0, v1

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 149
    invoke-virtual {p0}, Lo/OutOfMemoryError;->e()V

    .line 150
    iget-object v0, p0, Lo/OutOfMemoryError;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 69
    invoke-virtual {p0}, Lo/OutOfMemoryError;->e()V

    .line 70
    iget-object v0, p0, Lo/OutOfMemoryError;->e:Ljava/util/List;

    return-object v0
.end method

.method public c()Landroid/os/Bundle;
    .locals 1

    .line 197
    iget-object v0, p0, Lo/OutOfMemoryError;->c:Landroid/os/Bundle;

    return-object v0
.end method

.method public c(Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/IntentFilter;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 109
    invoke-virtual {p0}, Lo/OutOfMemoryError;->e()V

    .line 110
    iget-object v1, p0, Lo/OutOfMemoryError;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_2

    .line 112
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 114
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/IntentFilter;

    if-eqz v4, :cond_1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v1, :cond_1

    .line 117
    iget-object v6, p0, Lo/OutOfMemoryError;->e:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public c(Lo/OutOfMemoryError;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 138
    invoke-virtual {p0}, Lo/OutOfMemoryError;->e()V

    .line 139
    invoke-virtual {p1}, Lo/OutOfMemoryError;->e()V

    .line 140
    iget-object v0, p0, Lo/OutOfMemoryError;->e:Ljava/util/List;

    iget-object p1, p1, Lo/OutOfMemoryError;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public d()Z
    .locals 2

    .line 157
    invoke-virtual {p0}, Lo/OutOfMemoryError;->e()V

    .line 158
    iget-object v0, p0, Lo/OutOfMemoryError;->e:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method e()V
    .locals 2

    .line 74
    iget-object v0, p0, Lo/OutOfMemoryError;->e:Ljava/util/List;

    if-nez v0, :cond_1

    .line 75
    iget-object v0, p0, Lo/OutOfMemoryError;->c:Landroid/os/Bundle;

    const-string v1, "controlCategories"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lo/OutOfMemoryError;->e:Ljava/util/List;

    .line 76
    iget-object v0, p0, Lo/OutOfMemoryError;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lo/OutOfMemoryError;->e:Ljava/util/List;

    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 166
    instance-of v0, p1, Lo/OutOfMemoryError;

    if-eqz v0, :cond_0

    .line 167
    check-cast p1, Lo/OutOfMemoryError;

    .line 168
    invoke-virtual {p0}, Lo/OutOfMemoryError;->e()V

    .line 169
    invoke-virtual {p1}, Lo/OutOfMemoryError;->e()V

    .line 170
    iget-object v0, p0, Lo/OutOfMemoryError;->e:Ljava/util/List;

    iget-object p1, p1, Lo/OutOfMemoryError;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 177
    invoke-virtual {p0}, Lo/OutOfMemoryError;->e()V

    .line 178
    iget-object v0, p0, Lo/OutOfMemoryError;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaRouteSelector{ "

    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "controlCategories="

    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {p0}, Lo/OutOfMemoryError;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " }"

    .line 187
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
