.class public Lo/Short;
.super Lo/Constructor;
.source ""


# instance fields
.field final a:Lo/DataInputStream;

.field final d:Lo/DataInputStream;

.field final e:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 42
    invoke-direct {p0, p1}, Lo/Constructor;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 39
    invoke-super {p0}, Lo/Constructor;->b()Lo/DataInputStream;

    move-result-object v0

    iput-object v0, p0, Lo/Short;->a:Lo/DataInputStream;

    .line 51
    new-instance v0, Lo/Short$2;

    invoke-direct {v0, p0}, Lo/Short$2;-><init>(Lo/Short;)V

    iput-object v0, p0, Lo/Short;->d:Lo/DataInputStream;

    .line 43
    iput-object p1, p0, Lo/Short;->e:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public b()Lo/DataInputStream;
    .locals 1

    .line 48
    iget-object v0, p0, Lo/Short;->d:Lo/DataInputStream;

    return-object v0
.end method
