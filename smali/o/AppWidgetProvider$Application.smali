.class final Lo/AppWidgetProvider$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/InstantAppRequest$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/AppWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Application"
.end annotation


# instance fields
.field private final b:Lo/IntentFilterVerificationInfo;

.field final d:Ljava/security/MessageDigest;


# direct methods
.method constructor <init>(Ljava/security/MessageDigest;)V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {}, Lo/IntentFilterVerificationInfo;->d()Lo/IntentFilterVerificationInfo;

    move-result-object v0

    iput-object v0, p0, Lo/AppWidgetProvider$Application;->b:Lo/IntentFilterVerificationInfo;

    .line 66
    iput-object p1, p0, Lo/AppWidgetProvider$Application;->d:Ljava/security/MessageDigest;

    return-void
.end method


# virtual methods
.method public a_()Lo/IntentFilterVerificationInfo;
    .locals 1

    .line 72
    iget-object v0, p0, Lo/AppWidgetProvider$Application;->b:Lo/IntentFilterVerificationInfo;

    return-object v0
.end method
