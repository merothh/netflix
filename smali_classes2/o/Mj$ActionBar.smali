.class Lo/Mj$ActionBar;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Mj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ActionBar"
.end annotation


# instance fields
.field b:Landroid/widget/TextView;

.field d:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    iput-object p1, p0, Lo/Mj$ActionBar;->b:Landroid/widget/TextView;

    .line 201
    iput-object p2, p0, Lo/Mj$ActionBar;->d:Landroid/widget/TextView;

    return-void
.end method
