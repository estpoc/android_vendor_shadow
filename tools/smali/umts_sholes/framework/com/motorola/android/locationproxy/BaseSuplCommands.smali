.class public abstract Lcom/motorola/android/locationproxy/BaseSuplCommands;
.super Ljava/lang/Object;
.source "BaseSuplCommands.java"

# interfaces
.implements Lcom/motorola/android/locationproxy/ISuplCommands;


# instance fields
.field protected mCloseSocketRegistrants:Landroid/os/RegistrantList;

.field protected mContext:Landroid/content/Context;

.field protected mMtlr2Registrants:Landroid/os/RegistrantList;

.field protected mMtlrRegistrants:Landroid/os/RegistrantList;

.field protected mMtlrStatusRegistrants:Landroid/os/RegistrantList;

.field protected mOpenSocketRegistrants:Landroid/os/RegistrantList;

.field protected mSocketDataRegistrants:Landroid/os/RegistrantList;

.field protected mStateMonitor:Ljava/lang/Object;

.field protected mTlsRegistrants:Landroid/os/RegistrantList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/locationproxy/BaseSuplCommands;->mOpenSocketRegistrants:Landroid/os/RegistrantList;

    .line 28
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/locationproxy/BaseSuplCommands;->mCloseSocketRegistrants:Landroid/os/RegistrantList;

    .line 29
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/locationproxy/BaseSuplCommands;->mSocketDataRegistrants:Landroid/os/RegistrantList;

    .line 30
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/locationproxy/BaseSuplCommands;->mTlsRegistrants:Landroid/os/RegistrantList;

    .line 31
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/locationproxy/BaseSuplCommands;->mMtlrRegistrants:Landroid/os/RegistrantList;

    .line 32
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/locationproxy/BaseSuplCommands;->mMtlr2Registrants:Landroid/os/RegistrantList;

    .line 33
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/locationproxy/BaseSuplCommands;->mMtlrStatusRegistrants:Landroid/os/RegistrantList;

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/locationproxy/BaseSuplCommands;->mStateMonitor:Ljava/lang/Object;

    .line 38
    iput-object p1, p0, Lcom/motorola/android/locationproxy/BaseSuplCommands;->mContext:Landroid/content/Context;

    .line 39
    return-void
.end method


# virtual methods
.method public registerForSuplRequest(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 43
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_0

    .line 44
    new-instance v0, Landroid/os/Registrant;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 46
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/motorola/android/locationproxy/BaseSuplCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 47
    :try_start_0
    iget-object v2, p0, Lcom/motorola/android/locationproxy/BaseSuplCommands;->mOpenSocketRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 48
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .end local v0           #r:Landroid/os/Registrant;
    :cond_0
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_1

    .line 52
    new-instance v0, Landroid/os/Registrant;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 54
    .restart local v0       #r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/motorola/android/locationproxy/BaseSuplCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 55
    :try_start_1
    iget-object v2, p0, Lcom/motorola/android/locationproxy/BaseSuplCommands;->mSocketDataRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 56
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 59
    .end local v0           #r:Landroid/os/Registrant;
    :cond_1
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_2

    .line 60
    new-instance v0, Landroid/os/Registrant;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 62
    .restart local v0       #r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/motorola/android/locationproxy/BaseSuplCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 63
    :try_start_2
    iget-object v2, p0, Lcom/motorola/android/locationproxy/BaseSuplCommands;->mCloseSocketRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 64
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 67
    .end local v0           #r:Landroid/os/Registrant;
    :cond_2
    and-int/lit8 v1, p2, 0x8

    if-eqz v1, :cond_3

    .line 68
    new-instance v0, Landroid/os/Registrant;

    const/16 v1, 0x8

    invoke-direct {v0, p1, v1, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 70
    .restart local v0       #r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/motorola/android/locationproxy/BaseSuplCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 71
    :try_start_3
    iget-object v2, p0, Lcom/motorola/android/locationproxy/BaseSuplCommands;->mTlsRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 72
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 75
    .end local v0           #r:Landroid/os/Registrant;
    :cond_3
    and-int/lit8 v1, p2, 0x10

    if-eqz v1, :cond_4

    .line 76
    new-instance v0, Landroid/os/Registrant;

    const/16 v1, 0x10

    invoke-direct {v0, p1, v1, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 78
    .restart local v0       #r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/motorola/android/locationproxy/BaseSuplCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 79
    :try_start_4
    iget-object v2, p0, Lcom/motorola/android/locationproxy/BaseSuplCommands;->mMtlrRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 80
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 83
    .end local v0           #r:Landroid/os/Registrant;
    :cond_4
    and-int/lit8 v1, p2, 0x20

    if-eqz v1, :cond_5

    .line 84
    new-instance v0, Landroid/os/Registrant;

    const/16 v1, 0x20

    invoke-direct {v0, p1, v1, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 86
    .restart local v0       #r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/motorola/android/locationproxy/BaseSuplCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 87
    :try_start_5
    iget-object v2, p0, Lcom/motorola/android/locationproxy/BaseSuplCommands;->mMtlr2Registrants:Landroid/os/RegistrantList;

    invoke-virtual {v2, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 88
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 91
    .end local v0           #r:Landroid/os/Registrant;
    :cond_5
    and-int/lit8 v1, p2, 0x40

    if-eqz v1, :cond_6

    .line 92
    new-instance v0, Landroid/os/Registrant;

    const/16 v1, 0x40

    invoke-direct {v0, p1, v1, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 94
    .restart local v0       #r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/motorola/android/locationproxy/BaseSuplCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 95
    :try_start_6
    iget-object v2, p0, Lcom/motorola/android/locationproxy/BaseSuplCommands;->mMtlrStatusRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 96
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 98
    .end local v0           #r:Landroid/os/Registrant;
    :cond_6
    return-void

    .line 48
    .restart local v0       #r:Landroid/os/Registrant;
    :catchall_0
    move-exception v2

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v2

    .line 56
    :catchall_1
    move-exception v2

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v2

    .line 64
    :catchall_2
    move-exception v2

    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v2

    .line 72
    :catchall_3
    move-exception v2

    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v2

    .line 80
    :catchall_4
    move-exception v2

    :try_start_b
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    throw v2

    .line 88
    :catchall_5
    move-exception v2

    :try_start_c
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    throw v2

    .line 96
    :catchall_6
    move-exception v2

    :try_start_d
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    throw v2
.end method
