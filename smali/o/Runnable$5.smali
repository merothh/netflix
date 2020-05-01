.class Lo/Runnable$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/preference/Preference$ActionBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Runnable;->d(Landroidx/preference/PreferenceGroup;Ljava/util/List;)Lo/Runnable$Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroidx/preference/PreferenceGroup;

.field final synthetic c:Lo/Runnable;


# direct methods
.method constructor <init>(Lo/Runnable;Landroidx/preference/PreferenceGroup;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lo/Runnable$5;->c:Lo/Runnable;

    iput-object p2, p0, Lo/Runnable$5;->b:Landroidx/preference/PreferenceGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/preference/Preference;)Z
    .locals 2

    .line 147
    iget-object v0, p0, Lo/Runnable$5;->b:Landroidx/preference/PreferenceGroup;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->g(I)V

    .line 148
    iget-object v0, p0, Lo/Runnable$5;->c:Lo/Runnable;

    iget-object v0, v0, Lo/Runnable;->e:Lo/SecurityManager;

    invoke-virtual {v0, p1}, Lo/SecurityManager;->a(Landroidx/preference/Preference;)V

    .line 149
    iget-object p1, p0, Lo/Runnable$5;->b:Landroidx/preference/PreferenceGroup;

    .line 150
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->c()Landroidx/preference/PreferenceGroup$Application;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 152
    invoke-interface {p1}, Landroidx/preference/PreferenceGroup$Application;->a()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
