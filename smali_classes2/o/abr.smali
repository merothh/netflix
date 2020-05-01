.class public Lo/abr;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/preference/Preference$Application;


# instance fields
.field private final d:Lo/nP;


# direct methods
.method public constructor <init>(Lo/nP;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/abr;->d:Lo/nP;

    return-void
.end method


# virtual methods
.method public e(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lo/abr;->d:Lo/nP;

    invoke-static {v0, p1, p2}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->d(Lo/nP;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
