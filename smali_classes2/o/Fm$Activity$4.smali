.class final Lo/Fm$Activity$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Fm$Activity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final e:Lo/Fm$Activity$4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/Fm$Activity$4;

    invoke-direct {v0}, Lo/Fm$Activity$4;-><init>()V

    sput-object v0, Lo/Fm$Activity$4;->e:Lo/Fm$Activity$4;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 45
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
