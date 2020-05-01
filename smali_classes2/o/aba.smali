.class public Lo/aba;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/preference/Preference$ActionBar;


# instance fields
.field private final c:Lo/Am;

.field private final d:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lo/Am;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/aba;->d:Landroid/app/Activity;

    iput-object p2, p0, Lo/aba;->c:Lo/Am;

    return-void
.end method


# virtual methods
.method public a(Landroidx/preference/Preference;)Z
    .locals 2

    iget-object v0, p0, Lo/aba;->d:Landroid/app/Activity;

    iget-object v1, p0, Lo/aba;->c:Lo/Am;

    invoke-static {v0, v1, p1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->e(Landroid/app/Activity;Lo/Am;Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method
