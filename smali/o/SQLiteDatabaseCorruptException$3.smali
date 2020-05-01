.class Lo/SQLiteDatabaseCorruptException$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/SQLiteDebug;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/SQLiteDatabaseCorruptException;->e(I)Lo/SQLiteDebug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/SQLiteDatabaseCorruptException;

.field final synthetic c:I


# direct methods
.method constructor <init>(Lo/SQLiteDatabaseCorruptException;I)V
    .locals 0

    .line 303
    iput-object p1, p0, Lo/SQLiteDatabaseCorruptException$3;->a:Lo/SQLiteDatabaseCorruptException;

    iput p2, p0, Lo/SQLiteDatabaseCorruptException$3;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 306
    iget-object v0, p0, Lo/SQLiteDatabaseCorruptException$3;->a:Lo/SQLiteDatabaseCorruptException;

    iget v1, p0, Lo/SQLiteDatabaseCorruptException$3;->c:I

    invoke-virtual {v0, v1, p1}, Lo/SQLiteDatabaseCorruptException;->b(ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public e()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 311
    iget-object v0, p0, Lo/SQLiteDatabaseCorruptException$3;->a:Lo/SQLiteDatabaseCorruptException;

    iget v1, p0, Lo/SQLiteDatabaseCorruptException$3;->c:I

    invoke-virtual {v0, v1}, Lo/SQLiteDatabaseCorruptException;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
