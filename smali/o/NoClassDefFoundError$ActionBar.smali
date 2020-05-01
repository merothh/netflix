.class public final Lo/NoClassDefFoundError$ActionBar;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/NoClassDefFoundError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionBar"
.end annotation


# instance fields
.field private final a:Landroid/os/Bundle;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/NoSuchFieldException;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lo/NoClassDefFoundError$ActionBar;->a:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public b(Lo/NoSuchFieldException;)Lo/NoClassDefFoundError$ActionBar;
    .locals 1

    if-eqz p1, :cond_2

    .line 158
    iget-object v0, p0, Lo/NoClassDefFoundError$ActionBar;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/NoClassDefFoundError$ActionBar;->c:Ljava/util/ArrayList;

    goto :goto_0

    .line 160
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 163
    :goto_0
    iget-object v0, p0, Lo/NoClassDefFoundError$ActionBar;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 161
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "route descriptor already added"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 155
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "route must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()Lo/NoClassDefFoundError;
    .locals 4

    .line 200
    iget-object v0, p0, Lo/NoClassDefFoundError$ActionBar;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 201
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 202
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 204
    iget-object v3, p0, Lo/NoClassDefFoundError$ActionBar;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/NoSuchFieldException;

    invoke-virtual {v3}, Lo/NoSuchFieldException;->x()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 206
    :cond_0
    iget-object v0, p0, Lo/NoClassDefFoundError$ActionBar;->a:Landroid/os/Bundle;

    const-string v2, "routes"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 208
    :cond_1
    new-instance v0, Lo/NoClassDefFoundError;

    iget-object v1, p0, Lo/NoClassDefFoundError$ActionBar;->a:Landroid/os/Bundle;

    iget-object v2, p0, Lo/NoClassDefFoundError$ActionBar;->c:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lo/NoClassDefFoundError;-><init>(Landroid/os/Bundle;Ljava/util/List;)V

    return-object v0
.end method
