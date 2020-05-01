.class Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat$Helper;
.super Ljava/lang/Object;
.source "SharedPreferencesCompat.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method


# virtual methods
.method public apply(Landroid/content/SharedPreferences$Editor;)V
    .locals 1

    .prologue
    .line 35
    :try_start_0
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :goto_0
    return-void

    .line 36
    :catch_0
    move-exception v0

    .line 40
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
