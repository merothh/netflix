.class public abstract Lo/SerializablePermission;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/SerializablePermission$Activity;,
        Lo/SerializablePermission$ActionBar;,
        Lo/SerializablePermission$Application;
    }
.end annotation


# static fields
.field static final d:Lo/StringReader;


# instance fields
.field private b:Lo/StringReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Lo/StringReader;

    invoke-direct {v0}, Lo/StringReader;-><init>()V

    sput-object v0, Lo/SerializablePermission;->d:Lo/StringReader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 117
    iput-object v0, p0, Lo/SerializablePermission;->b:Lo/StringReader;

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract a(Lo/SerializablePermission$Activity;Z)V
.end method

.method public abstract b()Z
.end method

.method public abstract c(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment$SavedState;
.end method

.method public abstract c()V
.end method

.method public c(Lo/StringReader;)V
    .locals 0

    .line 401
    iput-object p1, p0, Lo/SerializablePermission;->b:Lo/StringReader;

    return-void
.end method

.method public abstract d(Landroid/os/Bundle;Ljava/lang/String;)Landroidx/fragment/app/Fragment;
.end method

.method public abstract d(II)V
.end method

.method public abstract d()Z
.end method

.method public abstract e(I)Lo/SerializablePermission$Application;
.end method

.method public abstract e()Lo/UnsupportedEncodingException;
.end method

.method public abstract e(Landroid/os/Bundle;Ljava/lang/String;Landroidx/fragment/app/Fragment;)V
.end method

.method public abstract e(Lo/SerializablePermission$Activity;)V
.end method

.method public abstract findFragmentById(I)Landroidx/fragment/app/Fragment;
.end method

.method public abstract findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
.end method

.method public g()Lo/StringReader;
    .locals 1

    .line 411
    iget-object v0, p0, Lo/SerializablePermission;->b:Lo/StringReader;

    if-nez v0, :cond_0

    .line 412
    sget-object v0, Lo/SerializablePermission;->d:Lo/StringReader;

    iput-object v0, p0, Lo/SerializablePermission;->b:Lo/StringReader;

    .line 414
    :cond_0
    iget-object v0, p0, Lo/SerializablePermission;->b:Lo/StringReader;

    return-object v0
.end method

.method public abstract h()Z
.end method

.method public abstract i()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end method

.method public abstract j()Z
.end method
