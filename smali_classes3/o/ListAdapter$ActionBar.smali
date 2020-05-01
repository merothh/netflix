.class final Lo/ListAdapter$ActionBar;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ActionBar"
.end annotation


# instance fields
.field private a:Z

.field final synthetic b:Lo/ListAdapter;

.field private final c:Ljava/lang/Integer;

.field private final d:Z

.field private final e:Ljava/lang/String;

.field private final h:Lo/ListAdapter$ActionBar;

.field private final i:Z


# direct methods
.method public constructor <init>(Lo/ListAdapter;Ljava/lang/String;Ljava/lang/Integer;ZZLo/ListAdapter$ActionBar;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "ZZ",
            "Lo/ListAdapter$ActionBar;",
            ")V"
        }
    .end annotation

    const-string v0, "tag"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    iput-object p1, p0, Lo/ListAdapter$ActionBar;->b:Lo/ListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lo/ListAdapter$ActionBar;->e:Ljava/lang/String;

    iput-object p3, p0, Lo/ListAdapter$ActionBar;->c:Ljava/lang/Integer;

    iput-boolean p4, p0, Lo/ListAdapter$ActionBar;->d:Z

    iput-boolean p5, p0, Lo/ListAdapter$ActionBar;->i:Z

    iput-object p6, p0, Lo/ListAdapter$ActionBar;->h:Lo/ListAdapter$ActionBar;

    .line 118
    invoke-static {p1}, Lo/ListAdapter;->b(Lo/ListAdapter;)Ljava/util/Map;

    move-result-object p1

    iget-object p2, p0, Lo/ListAdapter$ActionBar;->e:Ljava/lang/String;

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lo/ListAdapter;Ljava/lang/String;Ljava/lang/Integer;ZZLo/ListAdapter$ActionBar;ILo/amc;)V
    .locals 9

    and-int/lit8 v0, p7, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 109
    move-object v0, v1

    check-cast v0, Ljava/lang/Integer;

    move-object v5, v0

    goto :goto_0

    :cond_0
    move-object v5, p3

    :goto_0
    and-int/lit8 v0, p7, 0x4

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/4 v6, 0x0

    goto :goto_1

    :cond_1
    move v6, p4

    :goto_1
    and-int/lit8 v0, p7, 0x8

    if-eqz v0, :cond_2

    const/4 v7, 0x0

    goto :goto_2

    :cond_2
    move v7, p5

    :goto_2
    and-int/lit8 v0, p7, 0x10

    if-eqz v0, :cond_3

    .line 112
    move-object v0, v1

    check-cast v0, Lo/ListAdapter$ActionBar;

    move-object v8, v0

    goto :goto_3

    :cond_3
    move-object v8, p6

    :goto_3
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v8}, Lo/ListAdapter$ActionBar;-><init>(Lo/ListAdapter;Ljava/lang/String;Ljava/lang/Integer;ZZLo/ListAdapter$ActionBar;)V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 4

    .line 122
    iput-boolean p1, p0, Lo/ListAdapter$ActionBar;->a:Z

    .line 123
    iget-boolean v0, p0, Lo/ListAdapter$ActionBar;->d:Z

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lo/ListAdapter$ActionBar;->b:Lo/ListAdapter;

    invoke-static {v0, p1}, Lo/ListAdapter;->d(Lo/ListAdapter;Z)V

    .line 127
    :cond_0
    sget-object p1, Lo/ListAdapter;->e:Lo/ListAdapter$Activity;

    check-cast p1, Lo/MessagePdu;

    .line 128
    iget-object p1, p0, Lo/ListAdapter$ActionBar;->b:Lo/ListAdapter;

    iget-boolean v0, p0, Lo/ListAdapter$ActionBar;->i:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lo/ListAdapter;->setRepeatCount(I)V

    .line 129
    iget-object p1, p0, Lo/ListAdapter$ActionBar;->b:Lo/ListAdapter;

    iget-object v0, p0, Lo/ListAdapter$ActionBar;->e:Ljava/lang/String;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lo/ImageButton;->b(Lo/ImageButton;Ljava/lang/String;IILjava/lang/Object;)Z

    return-void
.end method

.method public final a()Z
    .locals 1

    .line 110
    iget-boolean v0, p0, Lo/ListAdapter$ActionBar;->d:Z

    return v0
.end method

.method public final b()Z
    .locals 1

    .line 111
    iget-boolean v0, p0, Lo/ListAdapter$ActionBar;->i:Z

    return v0
.end method

.method public final c()Ljava/lang/Integer;
    .locals 1

    .line 109
    iget-object v0, p0, Lo/ListAdapter$ActionBar;->c:Ljava/lang/Integer;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lo/ListAdapter$ActionBar;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Z
    .locals 1

    .line 115
    iget-boolean v0, p0, Lo/ListAdapter$ActionBar;->a:Z

    return v0
.end method

.method public final j()Lo/ListAdapter$ActionBar;
    .locals 1

    .line 112
    iget-object v0, p0, Lo/ListAdapter$ActionBar;->h:Lo/ListAdapter$ActionBar;

    return-object v0
.end method
