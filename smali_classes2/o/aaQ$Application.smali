.class final Lo/aaQ$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/aaQ;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final d:Lo/aaQ$Application;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/aaQ$Application;

    invoke-direct {v0}, Lo/aaQ$Application;-><init>()V

    sput-object v0, Lo/aaQ$Application;->d:Lo/aaQ$Application;

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

    .line 24
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
