.class Lo/ScrollBarDrawable$TaskDescription;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ScrollBarDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TaskDescription"
.end annotation


# instance fields
.field public a:Landroid/graphics/drawable/Drawable;

.field public b:Ljava/lang/CharSequence;

.field public c:Ljava/lang/CharSequence;

.field public d:I

.field public final e:Landroid/content/Context;

.field public f:Landroid/content/DialogInterface$OnClickListener;

.field public g:Ljava/lang/CharSequence;

.field public h:Z

.field public i:Landroid/content/DialogInterface$OnClickListener;

.field public j:Ljava/lang/CharSequence;

.field public k:Landroid/content/DialogInterface$OnKeyListener;

.field public l:Landroid/content/DialogInterface$OnCancelListener;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 99
    iput v0, p0, Lo/ScrollBarDrawable$TaskDescription;->d:I

    .line 95
    iput-object p1, p0, Lo/ScrollBarDrawable$TaskDescription;->e:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lo/ScrollBarDrawable$3;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lo/ScrollBarDrawable$TaskDescription;-><init>(Landroid/content/Context;)V

    return-void
.end method
