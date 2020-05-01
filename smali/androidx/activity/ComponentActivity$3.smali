.class public Landroidx/activity/ComponentActivity$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Class;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ActionBar;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/ActionBar;


# direct methods
.method public constructor <init>(Lo/ActionBar;)V
    .locals 0

    .line 108
    iput-object p1, p0, Landroidx/activity/ComponentActivity$3;->b:Lo/ActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Lo/UnicodeScript;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 0

    .line 112
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, p1, :cond_0

    .line 113
    iget-object p1, p0, Landroidx/activity/ComponentActivity$3;->b:Lo/ActionBar;

    invoke-virtual {p1}, Lo/ActionBar;->isChangingConfigurations()Z

    move-result p1

    if-nez p1, :cond_0

    .line 114
    iget-object p1, p0, Landroidx/activity/ComponentActivity$3;->b:Lo/ActionBar;

    invoke-virtual {p1}, Lo/ActionBar;->getViewModelStore()Lo/ExceptionInInitializerError;

    move-result-object p1

    invoke-virtual {p1}, Lo/ExceptionInInitializerError;->e()V

    :cond_0
    return-void
.end method
