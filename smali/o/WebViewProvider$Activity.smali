.class public final Lo/WebViewProvider$Activity;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/WebViewProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Activity"
.end annotation


# static fields
.field private static final a:Landroid/content/Intent;

.field static final synthetic b:Lo/WebViewProvider$Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lo/WebViewProvider$Activity;

    invoke-direct {v0}, Lo/WebViewProvider$Activity;-><init>()V

    sput-object v0, Lo/WebViewProvider$Activity;->b:Lo/WebViewProvider$Activity;

    .line 10
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sput-object v0, Lo/WebViewProvider$Activity;->a:Landroid/content/Intent;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final e()Landroid/content/Intent;
    .locals 1

    .line 10
    sget-object v0, Lo/WebViewProvider$Activity;->a:Landroid/content/Intent;

    return-object v0
.end method
