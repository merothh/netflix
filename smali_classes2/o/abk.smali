.class public Lo/abk;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final b:Landroidx/preference/Preference;

.field private final d:Lo/nS;

.field private final e:Lcom/netflix/mediaclient/ui/settings/SettingsFragment;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;Lo/nS;Landroidx/preference/Preference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/abk;->e:Lcom/netflix/mediaclient/ui/settings/SettingsFragment;

    iput-object p2, p0, Lo/abk;->d:Lo/nS;

    iput-object p3, p0, Lo/abk;->b:Landroidx/preference/Preference;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lo/abk;->e:Lcom/netflix/mediaclient/ui/settings/SettingsFragment;

    iget-object v1, p0, Lo/abk;->d:Lo/nS;

    iget-object v2, p0, Lo/abk;->b:Landroidx/preference/Preference;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->e(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;Lo/nS;Landroidx/preference/Preference;Landroid/content/DialogInterface;I)V

    return-void
.end method
