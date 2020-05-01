.class public interface abstract Lo/IE;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/IE$ActionBar;
    }
.end annotation


# static fields
.field public static final b:Lo/IE$ActionBar;

# The value of this static final field might be set in the static constructor
.field public static final d:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.LANGUAGES_INSTALLED_INTENT_ACTION"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/IE$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/IE$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/IE;->b:Lo/IE$ActionBar;

    const-string v0, "com.netflix.mediaclient.intent.action.LANGUAGES_INSTALLED_INTENT_ACTION"

    .line 43
    sput-object v0, Lo/IE;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract a(I)V
.end method

.method public abstract a(Ljava/util/Locale;)Z
.end method

.method public abstract b(Landroid/app/Activity;)V
.end method

.method public abstract b(Ljava/util/Locale;)Z
.end method

.method public abstract c(Landroid/app/Activity;)V
.end method

.method public abstract c()Z
.end method

.method public abstract d()V
.end method
