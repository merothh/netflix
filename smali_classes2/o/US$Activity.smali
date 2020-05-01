.class final Lo/US$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Factory$StateListAnimator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/US;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final e:Lo/US$Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/US$Activity;

    invoke-direct {v0}, Lo/US$Activity;-><init>()V

    sput-object v0, Lo/US$Activity;->e:Lo/US$Activity;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;ILandroid/view/ViewGroup;)V
    .locals 0

    const-string p2, "<anonymous parameter 0>"

    invoke-static {p1, p2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
