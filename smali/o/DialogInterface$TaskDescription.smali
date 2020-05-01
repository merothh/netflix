.class Lo/DialogInterface$TaskDescription;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/DialogInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TaskDescription"
.end annotation


# instance fields
.field final b:Landroid/content/res/ColorStateList;

.field final c:Landroid/content/res/Configuration;


# direct methods
.method constructor <init>(Landroid/content/res/ColorStateList;Landroid/content/res/Configuration;)V
    .locals 0

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    iput-object p1, p0, Lo/DialogInterface$TaskDescription;->b:Landroid/content/res/ColorStateList;

    .line 186
    iput-object p2, p0, Lo/DialogInterface$TaskDescription;->c:Landroid/content/res/Configuration;

    return-void
.end method
