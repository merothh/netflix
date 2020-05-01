.class abstract Lo/SeekableByteChannel$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/SeekableByteChannel$ActionBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/SeekableByteChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Application"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/SeekableByteChannel$4;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Lo/SeekableByteChannel$Application;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Landroid/view/View;)F
    .locals 0

    .line 88
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result p1

    return p1
.end method
