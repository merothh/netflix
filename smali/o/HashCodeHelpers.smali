.class public Lo/HashCodeHelpers;
.super Lo/ContextHubTransaction;
.source ""


# static fields
.field private static final a:Z


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:I

.field private final d:I

.field private j:Lo/MacAuthenticatedInputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    invoke-static {}, Lo/GLThreadManager;->d()Z

    move-result v0

    sput-boolean v0, Lo/HashCodeHelpers;->a:Z

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;)V
    .locals 1

    const/4 v0, 0x3

    .line 61
    invoke-direct {p0, p1, p2, v0}, Lo/HashCodeHelpers;-><init>(ILandroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;I)V
    .locals 3

    .line 43
    invoke-direct {p0}, Lo/ContextHubTransaction;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_0

    const/16 v2, 0x19

    if-gt p1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 44
    :goto_0
    invoke-static {v2}, Lo/StringParceledListSlice;->a(Z)V

    if-lez p3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 46
    :goto_1
    invoke-static {v0}, Lo/StringParceledListSlice;->a(Z)V

    .line 47
    invoke-static {p2}, Lo/StringParceledListSlice;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iput p3, p0, Lo/HashCodeHelpers;->d:I

    .line 49
    iput p1, p0, Lo/HashCodeHelpers;->c:I

    .line 50
    iput-object p2, p0, Lo/HashCodeHelpers;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public b(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 75
    iget v0, p0, Lo/HashCodeHelpers;->d:I

    iget v1, p0, Lo/HashCodeHelpers;->c:I

    invoke-static {p1, v0, v1}, Lo/LegacyExceptionUtils;->d(Landroid/graphics/Bitmap;II)V

    return-void
.end method

.method public d()Lo/MacAuthenticatedInputStream;
    .locals 5

    .line 81
    iget-object v0, p0, Lo/HashCodeHelpers;->j:Lo/MacAuthenticatedInputStream;

    if-nez v0, :cond_1

    .line 83
    sget-boolean v0, Lo/HashCodeHelpers;->a:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 84
    check-cast v3, Ljava/util/Locale;

    new-array v0, v1, [Ljava/lang/Object;

    iget v1, p0, Lo/HashCodeHelpers;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "IntrinsicBlur;%d"

    invoke-static {v3, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 86
    :cond_0
    check-cast v3, Ljava/util/Locale;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v4, p0, Lo/HashCodeHelpers;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v2

    iget v2, p0, Lo/HashCodeHelpers;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "IterativeBoxBlur;%d;%d"

    invoke-static {v3, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 88
    :goto_0
    new-instance v1, Lo/PackageInfoLite;

    invoke-direct {v1, v0}, Lo/PackageInfoLite;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lo/HashCodeHelpers;->j:Lo/MacAuthenticatedInputStream;

    .line 90
    :cond_1
    iget-object v0, p0, Lo/HashCodeHelpers;->j:Lo/MacAuthenticatedInputStream;

    return-object v0
.end method

.method public d(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 66
    sget-boolean v0, Lo/HashCodeHelpers;->a:Z

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lo/HashCodeHelpers;->b:Landroid/content/Context;

    iget v1, p0, Lo/HashCodeHelpers;->c:I

    invoke-static {p1, p2, v0, v1}, Lo/GLThreadManager;->e(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/content/Context;I)V

    goto :goto_0

    .line 69
    :cond_0
    invoke-super {p0, p1, p2}, Lo/ContextHubTransaction;->d(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    :goto_0
    return-void
.end method
