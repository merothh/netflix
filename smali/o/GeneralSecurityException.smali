.class Lo/GeneralSecurityException;
.super Ljava/lang/Object;
.source ""


# instance fields
.field final a:Lo/Params;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/Params<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final b:Lo/Spanned;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/Spanned<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final e:Lo/Spanned;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/Spanned<",
            "Landroid/view/View;",
            "Lo/AlgorithmParameters;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lo/Spanned;

    invoke-direct {v0}, Lo/Spanned;-><init>()V

    iput-object v0, p0, Lo/GeneralSecurityException;->e:Lo/Spanned;

    .line 29
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lo/GeneralSecurityException;->c:Landroid/util/SparseArray;

    .line 31
    new-instance v0, Lo/Params;

    invoke-direct {v0}, Lo/Params;-><init>()V

    iput-object v0, p0, Lo/GeneralSecurityException;->a:Lo/Params;

    .line 33
    new-instance v0, Lo/Spanned;

    invoke-direct {v0}, Lo/Spanned;-><init>()V

    iput-object v0, p0, Lo/GeneralSecurityException;->b:Lo/Spanned;

    return-void
.end method
